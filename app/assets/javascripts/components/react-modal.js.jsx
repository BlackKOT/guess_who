class ModalComponent extends React.Component {
    constructor(props) {
        super(props);
        this.state = { isModalOpen: !!props.opened };
        this.content = props.content;
        this.action = props.action;
    }

    render() {
        // <button onClick={() => this.openModal()}>Open modal</button>
        return (
            <div>
                <Modal isOpen={this.state.isModalOpen} onClose={() => this.closeModal()}>
                    <h1>{this.content.title}</h1>
                    <hr></hr>
                    <p>{this.content.text}</p>
                    <hr></hr>
                    <button onClick={() => this.closeModal() || this.action.func()}>{this.action.title}</button>
                </Modal>
            </div>
        )
    }

    openModal() {
        this.setState({ isModalOpen: true })
    }

    closeModal() {
        this.setState({ isModalOpen: false })
    }
}

class Modal extends React.Component {
    render() {
        if (this.props.isOpen === false)
            return null;

        let modalStyle = {
            position: 'fixed',
            top: '50%',
            left: '50%',
            transform: 'translate(-50%, -50%)',
            zIndex: '9999',
            background: '#fff',
            padding: '10px'
        };

        if (this.props.width && this.props.height) {
            modalStyle.width = this.props.width + 'px';
            modalStyle.height = this.props.height + 'px';
            modalStyle.marginLeft = '-' + (this.props.width/2) + 'px',
                modalStyle.marginTop = '-' + (this.props.height/2) + 'px',
                modalStyle.transform = null
        }

        if (this.props.style) {
            for (let key in this.props.style) {
                modalStyle[key] = this.props.style[key]
            }
        }

        let backdropStyle = {
            position: 'fixed',
            width: '100%',
            height: '100%',
            top: '0px',
            left: '0px',
            zIndex: '9998',
            background: 'rgba(0, 0, 0, 0.3)'
        };

        if (this.props.backdropStyle) {
            for (let key in this.props.backdropStyle) {
                backdropStyle[key] = this.props.backdropStyle[key]
            }
        }

        return (
            <div className={this.props.containerClassName}>
                <div className={this.props.className} style={modalStyle}>
                    {this.props.children}
                </div>
                {!this.props.noBackdrop &&
                <div className={this.props.backdropClassName} style={backdropStyle}
                     onClick={e => this.close(e)}/>}
            </div>
        )
    }

    close(e) {
        e.preventDefault();

        if (this.props.onClose) {
            this.props.onClose()
        }
    }
}

//ReactDOM.render(<App/>, document.getElementById('app'));
